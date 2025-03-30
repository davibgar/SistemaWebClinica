<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CapaPresentacion.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Acceso al Sistema de Clínica</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />
    <style>
        :root {
            --primary-color: #0099e5;
            --primary-hover: #007bb8;
            --secondary-color: #f8f9fa;
            --text-color: #333;
            --light-text: #6c757d;
            --border-color: #dee2e6;
        }
        
        body {
            background: linear-gradient(135deg, #f0f7ff 0%, #e6f0ff 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        .login-container {
            max-width: 400px;
            width: 100%;
        }
        
        .brand-wrapper {
            text-align: center;
            margin-bottom: 25px;
        }
        
        .brand-icon {
            background-color: white;
            width: 70px;
            height: 70px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        
        .brand-icon i {
            color: var(--primary-color);
            font-size: 30px;
        }
        
        .brand-title {
            font-weight: 700;
            color: var(--text-color);
            margin-bottom: 5px;
        }
        
        .brand-subtitle {
            color: var(--light-text);
            font-size: 14px;
        }
        
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        
        .card-header {
            background-color: white;
            border-bottom: 1px solid var(--border-color);
            padding: 25px 20px;
            text-align: center;
        }
        
        .card-title {
            font-weight: 700;
            color: var(--text-color);
            margin-bottom: 10px;
        }
        
        .card-subtitle {
            color: var(--light-text);
            font-size: 14px;
        }
        
        .card-body {
            padding: 30px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-label {
            font-weight: 600;
            color: var(--text-color);
            margin-bottom: 8px;
        }
        
        .form-control {
            height: 48px;
            border-radius: 8px;
            border: 1px solid var(--border-color);
            padding: 10px 15px;
            font-size: 15px;
        }
        
        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.25rem rgba(0, 153, 229, 0.25);
        }
        
        .btn-primary {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
            height: 48px;
            border-radius: 8px;
            font-weight: 600;
            font-size: 16px;
        }
        
        .btn-primary:hover {
            background-color: var(--primary-hover);
            border-color: var(--primary-hover);
        }
        
        .card-footer {
            background-color: white;
            border-top: 1px solid var(--border-color);
            padding: 15px;
            text-align: center;
            font-size: 12px;
            color: var(--light-text);
        }
    </style>
</head>
<body>
    <div class="login-container">
        <!-- Brand Logo and Name -->
        <div class="brand-wrapper">
            <div class="brand-icon">
                <i class="fas fa-heartbeat"></i>
            </div>
            <h1 class="brand-title">Clínica Médica</h1>
            <p class="brand-subtitle">Sistema de Gestión</p>
        </div>
        
        <!-- Login Card -->
        <div class="card">
            <div class="card-header">
                <h2 class="card-title">Iniciar Sesión</h2>
                <p class="card-subtitle">Ingrese sus credenciales para acceder al sistema</p>
            </div>
            
            <div class="card-body">
                <form id="form1" runat="server">
                    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" OnAuthenticate="LoginUser_Authenticate" Width="100%">
                        <LayoutTemplate>
                            <div class="form-group">
                                <label for="UserName" class="form-label">Usuario</label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="form-control" placeholder="Ingrese su nombre de usuario"></asp:TextBox>
                            </div>
                            
                            <div class="form-group">
                                <label for="Password" class="form-label">Contraseña</label>
                                <asp:TextBox ID="Password" runat="server" CssClass="form-control" placeholder="Ingrese su contraseña" TextMode="Password"></asp:TextBox>
                            </div>
                            
                            <asp:Button ID="btnIngresar" CommandName="Login" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary w-100" />
                        </LayoutTemplate>
                    </asp:Login>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>