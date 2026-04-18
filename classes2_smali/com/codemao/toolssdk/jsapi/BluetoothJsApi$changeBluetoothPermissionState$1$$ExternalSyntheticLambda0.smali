.class public final synthetic Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ILcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput p2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget v1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;->$r8$lambda$TmY0uTfkKb8Me00DB01hL42gE2Q(Lkotlin/jvm/functions/Function1;ILcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V

    return-void
.end method
