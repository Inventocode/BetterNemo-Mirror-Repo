.class Lcom/codemao/nemo/activity/BaseWorkPlayActivity$8;
.super Ljava/lang/Object;
.source "BaseWorkPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->cloudStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V
    .registers 2

    .line 994
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$8;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 997
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$8;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->unLoginGuideLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
