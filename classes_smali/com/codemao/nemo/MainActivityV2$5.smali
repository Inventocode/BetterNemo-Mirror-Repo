.class Lcom/codemao/nemo/MainActivityV2$5;
.super Ljava/lang/Object;
.source "MainActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/MainActivityV2;->deleteAImgsRemain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/MainActivityV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/MainActivityV2;)V
    .registers 2

    .line 640
    iput-object p1, p0, Lcom/codemao/nemo/MainActivityV2$5;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "toDeleteImgs"

    const-string v1, "nemo"

    .line 644
    :try_start_4
    iget-object v2, p0, Lcom/codemao/nemo/MainActivityV2$5;->this$0:Lcom/codemao/nemo/MainActivityV2;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 645
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2e

    .line 646
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 647
    invoke-static {v4}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_1e

    .line 650
    :cond_2e
    iget-object v2, p0, Lcom/codemao/nemo/MainActivityV2$5;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 651
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2$5;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-static {v0}, Lcom/codemao/nemo/MainActivityV2;->access$400(Lcom/codemao/nemo/MainActivityV2;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception v0

    .line 653
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4a
    return-void
.end method
