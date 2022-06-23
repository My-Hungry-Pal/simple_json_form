import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:simple_json_form/simple_json_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sampleData = JsonSchema.fromJson({
      "form": [
        {
          "key": "informations",
          "properties": [
            {
              "fields": [],
              "key": "buque",
              "title": "Buque",
              "description": "",
              "type": "text",
              "maxline": 1,
              "remark": false,
              "is_mandatory": true,
              "validations": {"length": {}}
            },
            {
              "fields": [],
              "key": "date",
              "title": "Fecha",
              "description": "",
              "type": "date",
              "maxline": 1,
              "remark": false,
              "is_mandatory": true
            },
            {
              "fields": [],
              "key": "departament",
              "title": "Departamento",
              "description": "",
              "type": "text",
              "maxline": 1,
              "remark": false,
              "is_mandatory": false
            },
            {
              "fields": [],
              "key": "cargo",
              "title": "Cargo",
              "description": "",
              "type": "text",
              "maxline": 1,
              "remark": false,
              "is_mandatory": false
            },
            {
              "fields": [],
              "key": "namereview",
              "title": "Nombre del evaluado",
              "description": "",
              "type": "text",
              "maxline": 1,
              "remark": false,
              "is_mandatory": false
            },
            {
              "fields": [],
              "key": "grade",
              "title": "Grado",
              "description": "",
              "type": "text",
              "maxline": 1,
              "remark": false,
              "is_mandatory": false
            },
          ]
        },
        {
          "key": "questions",
          "properties": [
            {
              "key": "conociendo",
              "fields": ["1", "2", "3", "4", "5"],
              "title": "Conocimiento del trabajo",
              "description":
                  "Aplica las destrezas y conocimientos necesarios en el cumplimiento de las tareas encomendadas.",
              "remark": true,
              "remark_label": "Puntaje",
              "remark_title": "Ingrese el Puntaje",
              "type": "multiple",
              "direction": "",
              "is_mandatory": false,
              "validations": {
                "length": {"min": 10, "max": 20}
              }
            },
            {
              "fields": ["1", "2", "3", "4", "5"],
              "key": "calidad",
              "title": "Calidad",
              "description":
                  "Realiza sus trabajos de acuerdo con los requerimientos en terminos contenido, exactitud presentacion y atencion.",
              "remark": true,
              "type": "multiple",
              "direction": "",
              "is_mandatory": false
            },
            {
              "fields": ["1", "2", "3", "4", "5"],
              "key": "recursos",
              "title": "Utilizacion de recursos",
              "description":
                  "Forma como emplea los equipos y elementos entregados para el desempeño de sus funciones.",
              "remark": true,
              "type": "multiple",
              "direction": "",
              "is_mandatory": false
            },
            {
              "fields": ["1", "2", "3", "4", "5"],
              "key": "oportunidad",
              "title": "Oportunidad",
              "description": "Entrega los trabajos de acuerdo con lo programado.",
              "remark": true,
              "type": "multiple",
              "direction": "",
              "is_mandatory": false
            },
            {
              "fields": ["1", "2", "3", "4", "5"],
              "key": "disciplina",
              "title": "Disciplina",
              "description":
                  "Mantiene ordenada y aseada su area de trabajo   y demuestra buen comportamiento durante el desarrollo de sus labores.",
              "remark": true,
              "type": "multiple",
              "direction": "",
              "is_mandatory": false
            },
            {
              "fields": ["1", "2", "3", "4", "5"],
              "key": "compromiso",
              "title": "Compromiso institucional",
              "description":
                  " Asume y transmite el conjunto de valores organizacionales. En su comportamiento  y actitudes demuestra sentido de pertenencia a la Compañía.",
              "remark": true,
              "type": "multiple",
              "direction": "",
              "is_mandatory": false
            },
            {
              "fields": ["1", "2", "3", "4", "5"],
              "key": "relacion",
              "title": "Relaciones inter personales",
              "description":
                  "Establece y mantiene comunicación con usuarios, superiores, compañeros y colaboradores , propiciando un ambiente laboral de cordialidad y respeto.",
              "remark": true,
              "type": "multiple",
              "direction": "",
              "is_mandatory": false
            },
            {
              "fields": ["1", "2", "3", "4", "5"],
              "key": "colaboracion",
              "title": "Colaboracion",
              "description":
                  "Aplica las destrezas y conocimientos necesarios en el cumplimiento de las tareas encomendadas.",
              "remark": true,
              "type": "multiple",
              "direction": "",
              "is_mandatory": false
            },
            {
              "fields": ["1", "2", "3", "4", "5"],
              "key": "confiabilidad",
              "title": "Confiabilidad",
              "description":
                  "Genera credibilidad y confianza frente al manejo de la información y en la ejecución de  sus actividades laborales",
              "remark": true,
              "type": "multiple",
              "direction": "",
              "is_mandatory": false
            },
          ]
        },
      ]
    });

    return MaterialApp(
      title: 'FormBuilder Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SimpleJsonForm(
                jsonSchema: sampleData,
                title: "EVALUACION DE DESEMPEÑO DEL PERSONAL EMBARCADO",
                titleStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                description: "EVALUACION DE DESEMPEÑO",
                crossAxisAlignment: CrossAxisAlignment.center,
                index: 0,
                imageUrl: fileUpload(),
                submitButtonText: 'Guardar este paquete',
                nextButtonText: 'Siguiente',
                previousButtonText: 'Anterior',
                onSubmit: (val) {
                  if (val == null) {
                    print("no data");
                  } else {
                    var json = jsonEncode(val.toJson());
                    print(json);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  fileUpload() {
    return "";
  }
}
