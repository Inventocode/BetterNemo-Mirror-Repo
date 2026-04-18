.class Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;
.super Ljava/lang/Object;
.source "CourseVideoContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/CourseVideoContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CourseVideoContainer;


# direct methods
.method private constructor <init>(Lcom/codemao/nemo/view/CourseVideoContainer;)V
    .registers 2

    .line 894
    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;->this$0:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/view/CourseVideoContainer;Lcom/codemao/nemo/view/CourseVideoContainer$1;)V
    .registers 3

    .line 894
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;-><init>(Lcom/codemao/nemo/view/CourseVideoContainer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 897
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;->this$0:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_14

    .line 898
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;->this$0:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-static {v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->access$300(Lcom/codemao/nemo/view/CourseVideoContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    .line 900
    :cond_14
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;->this$0:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-static {v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->access$400(Lcom/codemao/nemo/view/CourseVideoContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1d
    return-void
.end method
