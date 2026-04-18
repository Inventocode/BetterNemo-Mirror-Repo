.class final Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getDeviceId$$inlined$synchronized$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyTelephonyProxy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getDeviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
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
.field final synthetic $index$inlined:I

.field final synthetic $key$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $manager$inlined:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;I)V
    .registers 4

    iput-object p1, p0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getDeviceId$$inlined$synchronized$lambda$2;->$key$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getDeviceId$$inlined$synchronized$lambda$2;->$manager$inlined:Landroid/telephony/TelephonyManager;

    iput p3, p0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getDeviceId$$inlined$synchronized$lambda$2;->$index$inlined:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getDeviceId$$inlined$synchronized$lambda$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getDeviceId$$inlined$synchronized$lambda$2;->$manager$inlined:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getDeviceId$$inlined$synchronized$lambda$2;->$index$inlined:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manager.getDeviceId(index)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
