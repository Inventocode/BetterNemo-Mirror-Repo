.class Lcom/codemao/nemo/activity/TipOffActivity$1;
.super Ljava/lang/Object;
.source "TipOffActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/TipOffActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/TipOffActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/TipOffActivity;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity$1;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity$1;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/TipOffActivity;->llRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/TipOffActivity;->access$002(Lcom/codemao/nemo/activity/TipOffActivity;I)I

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity$1;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/TipOffActivity;->access$100(Lcom/codemao/nemo/activity/TipOffActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->start()V

    return-void
.end method
