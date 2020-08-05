<?php
require_once 'vendor/autoload.php';

//die("<h1>Revisar el archivo libs/paypal.php</h1><h1>Comentar o eliminar linea 4 despues de agregar los datos de autenticación solicitados</h1><h2><a href=\"index.php?page=dashboard\">Regresar</a></h2>");
/**
 * Retorna el Api Context de Paypal
 *
 * @return void
 */
function getApiContext()
{
    $apiContext = new \PayPal\Rest\ApiContext(
        new \PayPal\Auth\OAuthTokenCredential(
            'AQplTvXgvpKwwTp4jLaGgHzMo21ugNFN3wvw9GeK_KMv3qF7DaG3IHVYs4Ybge3mzo2aqkIrLbxB9R7w',     // ClientID
            'ENWQGZRz-CuEaTMztiUx6tExXrgO8ds07_V_R2JYOnc-VMGSRPCBtODSvjlCFaqsRZ_XQTHn5uCnWcqR'      // ClientSecret
        )
    );
    return $apiContext;
}
?>
