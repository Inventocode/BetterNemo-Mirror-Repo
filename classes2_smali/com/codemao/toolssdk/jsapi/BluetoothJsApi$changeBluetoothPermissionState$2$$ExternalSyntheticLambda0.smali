.class public final synthetic Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$2$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$2$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$2$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$2$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$2;->$r8$lambda$rand1-Lh-bFsbV0LDUKrKQ2X6VY(Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V

    return-void
.end method
