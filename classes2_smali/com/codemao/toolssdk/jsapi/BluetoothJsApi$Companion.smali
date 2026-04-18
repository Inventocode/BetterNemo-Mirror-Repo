.class public final Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$Companion;
.super Ljava/lang/Object;
.source "BluetoothJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNamespace()Ljava/lang/String;
    .registers 2

    .line 50
    invoke-static {}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$getNamespace$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
