.class final Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSimState$$inlined$synchronized$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyTelephonyProxy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getSimState(Landroid/telephony/TelephonyManager;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $key$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $manager$inlined:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;)V
    .registers 3

    iput-object p1, p0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSimState$$inlined$synchronized$lambda$1;->$key$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSimState$$inlined$synchronized$lambda$1;->$manager$inlined:Landroid/telephony/TelephonyManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSimState$$inlined$synchronized$lambda$1;->$manager$inlined:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSimState$$inlined$synchronized$lambda$1;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
