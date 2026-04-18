.class Lcom/codemao/nemo/view/CourseVideoContainer$2;
.super Ljava/lang/Object;
.source "CourseVideoContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CourseVideoContainer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CourseVideoContainer;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CourseVideoContainer;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer$2;->this$0:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 135
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer$2;->this$0:Lcom/codemao/nemo/view/CourseVideoContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->setRetryVisible(I)V

    .line 136
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer$2;->this$0:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/CourseVideoContainer;->retryStartVideo()V

    .line 137
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer$2;->this$0:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-static {p1}, Lcom/codemao/nemo/view/CourseVideoContainer;->access$000(Lcom/codemao/nemo/view/CourseVideoContainer;)Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 138
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer$2;->this$0:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-static {p1}, Lcom/codemao/nemo/view/CourseVideoContainer;->access$000(Lcom/codemao/nemo/view/CourseVideoContainer;)Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;->onReset()V

    :cond_1d
    return-void
.end method
