import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Color(0xFF146C43),
       foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 16,
        toolbarHeight: 56,
        shape: null,
        title: const Text('Configurações',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color(0xFFFFFFFF)
        ),
        ),
      ),
      body:  
      Padding(
        padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
         Container(
          
          width: double.infinity,
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: Color(0xFFE8F5EE),
           border: Border.all(color: Colors.grey.shade500),
            borderRadius: BorderRadius.circular(12)
            ),
          
          child: Row(
            children: [Icon(Icons.notifications, color: Color(0xFF146c43)),
            SizedBox(width: 12),
            Column(
              children: [
                Text('Notificações',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1F1F1F)
                ),
                ),
                Text('Gerencie seus alertas',
                style: 
                TextStyle(
                  fontSize: 12,
                  color: Color(0xFF8A8A8A)
                ),
                )
              ],
            )
            ],
          ),
         ),
         Container(
          
          width: double.infinity,
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
           border: Border.all(color: Colors.grey.shade500),
            borderRadius: BorderRadius.circular(12)
            ),
          
          child: Row(
            children: [Icon(Icons.lock, color: Color(0xFF146c43)),
            SizedBox(width: 12),
            Column(
              children: [
                Text('Privacidade e Segurança',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1F1F1F)
                ),
                ),
              ],
            )
            ],
          ),
         ),
         Container(
          
          width: double.infinity,
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
           border: Border.all(color: Colors.grey.shade500),
            borderRadius: BorderRadius.circular(12)
            ),
          
          child: Row(
            children: [Icon(Icons.help, color: Color(0xFF146c43)),
            SizedBox(width: 12),
            Column(
              children: [
                Text('Ajuda e Suporte',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1F1F1F)
                ),
                ),
              ],
            )
            ],
          ),
         ),

        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xFFE0E0E0),),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                children: [
                   Icon(Icons.workspace_premium, color: Color(0xFF146c43)),
                   Text('Plano Premium', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1F1F1F)
                   ),
                   ),
                   
                   Spacer(),

                Container(
                decoration: BoxDecoration(
               border: Border(),
               borderRadius: BorderRadius.circular(20),
               color:    Color(0xFFE8F5EE)
              
                ),
                padding: EdgeInsets.symmetric(horizontal:10 , vertical: 4),
                child:
                 Text('Ativo',style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF146c43),
                ),
                )
              )
                ],
              ),

            Row(
            children: [
              Text('Armazenamento Utilizado',style: TextStyle(
                fontSize: 14,
                color: Color(0xFF8A8A8A),
              ),
              )
            ],
            ),

          Row(
            spacing: 12,
            children: [

              Expanded(
                child: Container(
                  // width: 160,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border(),
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFE8F5EE)
                  ),
                child: Column(
                  children: [
                    Icon(Icons.devices, color: Color(0xFF146c43),),
                    Text('3',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1F1F1F),
                    ),
                    ),
                    Text('Dispositivos',style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF8A8A8A),
                    ),
                    )
                  ],
                )
                ),
              ),
              Expanded(
                child: Container(
                  // width: 160,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border(),
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFE8F5EE)
                  ),
                
                child: Column(
                  children: [
                    Icon(Icons.calendar_today, color: Color(0xFF146c43)),
                    Text('12 dias',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1F1F1F),
                    ),
                    ),
                    Text('Expira em',style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF8A8A8A),
                    ),
                    )
                  ],
                ),  
                ),
              ),
            ],
          ),
            ],
          ),
        ),
        Spacer(),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(onPressed: (){}, child: Text('Sair da conta', style: TextStyle(
            color: Colors.red,
          ),)))

        ],
      ),
      ),
    bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Perfil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Configurações",
          ),
        ],
    )
    );
  }
}


