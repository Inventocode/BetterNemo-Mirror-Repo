.class final Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mWXApi$2;
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
        "Lcom/tencent/mm/opensdk/openapi/IWXAPI;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mWXApi$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mWXApi$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const-string v1, "wx5966b00f345eb948"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 70
    invoke-virtual {p0}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mWXApi$2;->invoke()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    return-object v0
.end method
