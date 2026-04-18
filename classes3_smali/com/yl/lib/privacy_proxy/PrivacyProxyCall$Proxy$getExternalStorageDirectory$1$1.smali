.class final Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getExternalStorageDirectory$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyProxyCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getExternalStorageDirectory()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getExternalStorageDirectory$1$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getExternalStorageDirectory$1$1;

    invoke-direct {v0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getExternalStorageDirectory$1$1;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getExternalStorageDirectory$1$1;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getExternalStorageDirectory$1$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .registers 3

    .line 829
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "Environment.getExternalStorageDirectory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getExternalStorageDirectory$1$1;->invoke()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
