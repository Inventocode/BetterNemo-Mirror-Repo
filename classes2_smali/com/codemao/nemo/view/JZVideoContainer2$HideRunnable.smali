.class Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;
.super Ljava/lang/Object;
.source "JZVideoContainer2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/JZVideoContainer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/JZVideoContainer2;


# direct methods
.method private constructor <init>(Lcom/codemao/nemo/view/JZVideoContainer2;)V
    .registers 2

    .line 737
    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;->this$0:Lcom/codemao/nemo/view/JZVideoContainer2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/view/JZVideoContainer2;Lcom/codemao/nemo/view/JZVideoContainer2$1;)V
    .registers 3

    .line 737
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;-><init>(Lcom/codemao/nemo/view/JZVideoContainer2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 740
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;->this$0:Lcom/codemao/nemo/view/JZVideoContainer2;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_14

    .line 741
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;->this$0:Lcom/codemao/nemo/view/JZVideoContainer2;

    invoke-static {v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->access$200(Lcom/codemao/nemo/view/JZVideoContainer2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    .line 743
    :cond_14
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;->this$0:Lcom/codemao/nemo/view/JZVideoContainer2;

    invoke-static {v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->access$300(Lcom/codemao/nemo/view/JZVideoContainer2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1d
    return-void
.end method
