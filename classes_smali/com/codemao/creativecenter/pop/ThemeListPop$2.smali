.class Lcom/codemao/creativecenter/pop/ThemeListPop$2;
.super Ljava/lang/Object;
.source "ThemeListPop.java"

# interfaces
.implements Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/ThemeListPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/ThemeListPop;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickDownload(Landroid/view/View;Lcom/codemao/creativestore/bean/ThemeMaterialListItem;II)V
    .registers 8

    .line 96
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeNetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 97
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 101
    :cond_16
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {v0, p1, p3, p4}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$000(Lcom/codemao/creativecenter/pop/ThemeListPop;Landroid/view/View;II)V

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p4

    iget-object p4, p4, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "zipcache"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getPackage_name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 105
    new-instance v0, Lcom/codemao/creativecenter/utils/down/DownloadFile;

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getDownload_url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/codemao/creativecenter/utils/down/DownloadFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    invoke-direct {v1, p3, p4}, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance p3, Lcom/codemao/creativecenter/utils/down/MaterialTask;

    invoke-direct {p3, p1, v0, v1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;-><init>(Ljava/lang/String;Lcom/codemao/creativecenter/utils/down/DownloadFile;Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)V

    .line 108
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->addTask(Lcom/codemao/creativecenter/utils/down/MaterialTask;)Z

    const/4 p1, 0x1

    .line 109
    invoke-virtual {p2, p1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    return-void
.end method

.method public clickToDetail(Lcom/codemao/creativestore/bean/ThemeMaterialListItem;)V
    .registers 7

    .line 114
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {v2}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$200(Lcom/codemao/creativecenter/pop/ThemeListPop;)Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result p1

    int-to-long v3, p1

    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;-><init>(Lcom/codemao/creativecenter/base/BaseCreativeActivity;J)V

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$102(Lcom/codemao/creativecenter/pop/ThemeListPop;Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    .line 115
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 117
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 118
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$2;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    .line 119
    invoke-static {v0}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$100(Lcom/codemao/creativecenter/pop/ThemeListPop;)Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method
