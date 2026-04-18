.class final Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getString$$inlined$synchronized$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyProxyCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $contentResolver$inlined:Landroid/content/ContentResolver;

.field final synthetic $key$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $type$inlined:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getString$$inlined$synchronized$lambda$1;->$key$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getString$$inlined$synchronized$lambda$1;->$contentResolver$inlined:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getString$$inlined$synchronized$lambda$1;->$type$inlined:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getString$$inlined$synchronized$lambda$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 765
    iget-object v0, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getString$$inlined$synchronized$lambda$1;->$contentResolver$inlined:Landroid/content/ContentResolver;

    .line 766
    iget-object v1, p0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getString$$inlined$synchronized$lambda$1;->$type$inlined:Ljava/lang/String;

    .line 764
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings.Secure.getStrin…ype\n                    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
