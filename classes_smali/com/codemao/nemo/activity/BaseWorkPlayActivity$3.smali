.class Lcom/codemao/nemo/activity/BaseWorkPlayActivity$3;
.super Ljava/lang/Object;
.source "BaseWorkPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->beforeLoad()V
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

    .line 349
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz v1, :cond_c

    .line 354
    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_15

    .line 355
    :cond_c
    iget-object v1, v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz v1, :cond_15

    .line 356
    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/X5DWebView;->loadUrl(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void
.end method
