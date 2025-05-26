use actix_web::{web, App, HttpResponse, HttpServer, Responder};
use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
struct MedicalReport {
    patient_id: String,
    name: String,
    age: u8,
    diagnosis: String,
    treatment: String,
}

async fn get_report(patient_id: web::Path<String>) -> impl Responder {
    let report = MedicalReport {
        patient_id: patient_id.into_inner(),
        name: "John Doe".to_string(),
        age: 35,
        diagnosis: "Common Cold".to_string(),
        treatment: "Rest and fluids".to_string(),
    };
    HttpResponse::Ok().json(report)
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new().service(
            web::resource("/report/{patient_id}")
                .route(web::get().to(get_report))
        )
    })
    .bind("127.0.0.1:8080")?
    .run()
    .await
}