.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$2;
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
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$2;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$2;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 297
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$enableNotifications$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
