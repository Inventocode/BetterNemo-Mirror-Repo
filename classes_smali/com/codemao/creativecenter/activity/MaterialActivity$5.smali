.class Lcom/codemao/creativecenter/activity/MaterialActivity$5;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "MaterialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MaterialActivity;->initRightRv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V
    .registers 2

    .line 435
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$5;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    .line 438
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$5;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    .line 441
    :cond_10
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$5;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$600(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_23

    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$5;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$700(Lcom/codemao/creativecenter/activity/MaterialActivity;)Z

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x4

    goto :goto_24

    :cond_23
    const/4 p1, 0x5

    :goto_24
    return p1
.end method
