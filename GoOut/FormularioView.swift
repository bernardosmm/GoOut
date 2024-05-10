//
//  FormularioView.swift
//  GoOut
//
//  Created by Princesa Trindade Rebouças Esmeraldo Nunes on 09/05/24.
//
//
//  FormularioView.swift
//  GoOut
//
//  Created by Princesa Trindade Rebouças Esmeraldo Nunes on 08/05/24.
//

import SwiftUI

struct FormularioView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var description = ""
    
    @State private var showingImagePicker = false
    
    @State private var inputImage: UIImage?
    
    @State private var startDate = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 5, day: 16)
        let endComponents = DateComponents(year: 2024, month: 12, day: 31)
        return calendar.date(from: startComponents)!
        ...
        calendar.date(from: endComponents)!
    }()
    
    @State private var endDate = Date()
    
    
    //    struct BackButton: View {
    //        let action: () -> Void
    //
    //        var body: some View {
    //            Button(action: action) {
    //                Image(systemName: "arrow.backward.circle.fill")
    //            }
    //            .symbolVariant(.circle.fill)
    //            .font(.title)
    //        }
    //    }
    
    var body: some View {
        NavigationStack {
            List {
                Group {
                    
                    // Row nome do evento
                    VStack(alignment: .leading) {
                        Text("Nome do Evento")
                            .bold()
                            .foregroundStyle(.gray)
                        TextField("Encontro da Turma, Passeio pela Orla...", text: .constant(""))
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.white)
                            }
                    }
                    
                    // Row descrição do evento
                    VStack(alignment: .leading) {
                        Text("Descrição")
                            .bold()
                            .foregroundStyle(.gray)
                        TextField("Adicione uma descrição do seu evento", text: $description, axis: .vertical)
                            .padding()
                            .frame(height: 100, alignment: .top)
                            .background {
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.white)
                            }
                    }
                    
                    // Row endereço do evento
                    VStack(alignment: .leading) {
                        Text("Endereço")
                            .bold()
                            .foregroundStyle(.gray)
                        TextField("Av. Treze de Maio, 2081", text: .constant(""))
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.white)
                            }
                    }
                    
                    //Row data do evento
                    HStack {
                        Text("Data do Evento")
                            .bold()
                            .foregroundStyle(.gray)
                        Spacer()
                        DatePicker(
                            "Data do Evento",
                            selection: $startDate,
                            in: dateRange,
                            displayedComponents: [.date]
                        )
                        .labelsHidden()
                    }
                    
                    //Row horário do evento
                    HStack {
                        Text("Horário do Evento")
                            .bold()
                            .foregroundStyle(.gray)
                        Spacer()
                        DatePicker(
                            "Inicio",
                            selection: $startDate,
                            in: dateRange,
                            displayedComponents: [.hourAndMinute]
                        )
                        .labelsHidden()
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 50, height: 10)
                            .foregroundStyle(.gray)
                        DatePicker(
                            "Fim",
                            selection: $endDate,
                            in: dateRange,
                            displayedComponents: [.hourAndMinute]
                        )
                        .labelsHidden()
                    }
                    
                    //Row preço
                    VStack(alignment: .leading) {
                        Text("Preço")
                            .bold()
                            .foregroundStyle(.gray)
                        TextField("Gratuito, até 50,00$", text: .constant(""))
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.white)
                            }
                    }
                    
                    // Row link de comunidade
                    VStack(alignment: .leading) {
                        Text("Link da Comunidade")
                            .bold()
                            .foregroundStyle(.gray)
                        TextField("Insira Link de Acesso à Comunidade (Instagram, Discord...", text: .constant(""))
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.white)
                            }
                    }
                    
                    // Row imagens
                    VStack(alignment: .leading) {
                        Text("Imagem")
                            .bold()
                            .foregroundStyle(.gray)
                        ZStack {
                            RoundedRectangle(cornerRadius: 16, style: .continuous)
                                .foregroundStyle(.white)
                                .frame(width: 355, height: 50)
                                .aspectRatio(1.618, contentMode: .fit)
                            Text("Clique para fazer upload de Imagem")
                                .foregroundStyle(.blue)
                                .font(.subheadline)
                        }
                        .onTapGesture {
                            showingImagePicker = true
                        }
                        
                    }
                    
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
            }
            .listStyle(.plain)
            .background(Color(uiColor: .secondarySystemBackground))
            .navigationTitle("Criar Evento")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancelar") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Salvar") {
                        
                    }
                }
            }
            .interactiveDismissDisabled(true)
            .sheet(isPresented: $showingImagePicker) {
                ImagePicker(image: $inputImage)
            }
        }
                
    }
}


#Preview {
    ContentView()
        .sheet(isPresented: .constant(true)) {
            FormularioView()
        }
}

