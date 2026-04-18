.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppBluetoothJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1;->enableNotifications(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[B",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$1;->$notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 297
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$1;->invoke([B)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([B)V
    .registers 7

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    .line 300
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/NotificationReturnData;

    .line 301
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$1;->$notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->getPeripheralId()Ljava/lang/String;

    move-result-object v2

    .line 302
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$1;->$notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->getServiceId()Ljava/lang/String;

    move-result-object v3

    .line 303
    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$1;->$notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->getCharacteristicId()Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/HexString;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/codemao/toolssdk/model/dsbridge/NotificationReturnData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$notification(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/NotificationReturnData;)V

    return-void
.end method
