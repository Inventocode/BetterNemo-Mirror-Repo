.class Lcom/codemao/nemo/activity/BaseSearchActivity$1;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseSearchActivity;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity;->mKeyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->start()V

    return-void
.end method
