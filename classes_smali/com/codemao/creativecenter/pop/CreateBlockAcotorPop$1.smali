.class Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$1;
.super Ljava/lang/Object;
.source "CreateBlockAcotorPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->init(ILcom/codemao/creativecenter/view/LocalBcmView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$1;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 82
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$1;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$000(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/view/LocalBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->hideBlockActor()V

    return-void
.end method
