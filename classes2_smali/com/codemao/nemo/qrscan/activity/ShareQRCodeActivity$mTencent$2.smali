.class final Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mTencent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ShareQRCodeActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/tencent/tauth/Tencent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mTencent$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/tencent/tauth/Tencent;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mTencent$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "101477015"

    invoke-static {v1, v0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mTencent$2;->invoke()Lcom/tencent/tauth/Tencent;

    move-result-object v0

    return-object v0
.end method
