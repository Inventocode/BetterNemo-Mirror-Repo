.class final Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mNetStore$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ScanQRCodeActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/nemo/qrscan/net/ScanNetStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mNetStore$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/nemo/qrscan/net/ScanNetStore;
    .registers 3

    .line 100
    new-instance v0, Lcom/codemao/nemo/qrscan/net/ScanNetStore;

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mNetStore$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/qrscan/net/ScanNetStore;-><init>(Lcom/giu/xzz/BaseActivity;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$mNetStore$2;->invoke()Lcom/codemao/nemo/qrscan/net/ScanNetStore;

    move-result-object v0

    return-object v0
.end method
