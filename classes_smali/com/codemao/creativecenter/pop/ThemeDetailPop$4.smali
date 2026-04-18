.class Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;
.super Ljava/lang/Object;
.source "ThemeDetailPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/ThemeDetailPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 166
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeNetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 167
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 171
    :cond_16
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$200(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object v0

    if-nez v0, :cond_1f

    return-void

    .line 175
    :cond_1f
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$300(Lcom/codemao/creativecenter/pop/ThemeDetailPop;Landroid/view/View;)V

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$200(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "zipcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {v3}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$200(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v4

    iget-object v4, v4, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {v1}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$200(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    new-instance v2, Lcom/codemao/creativecenter/utils/down/DownloadFile;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {v3}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$200(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getDownload_url()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/codemao/creativecenter/utils/down/DownloadFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v3, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    invoke-direct {v3, v0, v1}, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/codemao/creativecenter/utils/down/MaterialTask;

    invoke-direct {v0, p1, v2, v3}, Lcom/codemao/creativecenter/utils/down/MaterialTask;-><init>(Ljava/lang/String;Lcom/codemao/creativecenter/utils/down/DownloadFile;Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)V

    .line 183
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->addTask(Lcom/codemao/creativecenter/utils/down/MaterialTask;)Z

    .line 184
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$200(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    return-void
.end method
