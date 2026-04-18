.class public Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;
.super Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientBase;
.source "ToolsWebChromeClientPython.java"


# instance fields
.field private fragment:Landroidx/fragment/app/Fragment;

.field private mActivity:Landroid/app/Activity;

.field private permission:Ljava/util/List;

.field private uploadFiles:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientBase;-><init>(Landroid/content/Context;)V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->permission:Ljava/util/List;

    .line 47
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_17

    .line 48
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->mActivity:Landroid/app/Activity;

    :cond_17
    return-void
.end method

.method private goAlbum()V
    .registers 6

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->fragment:Landroidx/fragment/app/Fragment;

    const v2, 0x9001

    const-string v3, "Choose"

    if-eqz v1, :cond_2b

    .line 101
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v4, "fragment开启文件选择:36865"

    invoke-virtual {v1, v4}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->fragment:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3f

    .line 104
    :cond_2b
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_3f

    .line 105
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v4, "activity开启文件选择:36865"

    invoke-virtual {v1, v4}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private openFileChooseProcess()V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->goAlbum()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestCode==="

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_5d

    .line 151
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "结果是ok,fileChooser，RequestCode:36865,requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    const v3, 0x9001

    if-eq p1, v3, :cond_36

    goto :goto_6f

    :cond_36
    const-string p1, "进入图片选择的onActivityResult"

    .line 154
    invoke-virtual {v2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->uploadFiles:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_6f

    const-string p1, "uploadFiles不为空"

    .line 156
    invoke-virtual {v2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    if-eqz p3, :cond_4e

    if-eq p2, v0, :cond_49

    goto :goto_4e

    .line 158
    :cond_49
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_4f

    :cond_4e
    :goto_4e
    move-object p1, v1

    .line 159
    :goto_4f
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->uploadFiles:Landroid/webkit/ValueCallback;

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/net/Uri;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-interface {p2, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 160
    iput-object v1, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->uploadFiles:Landroid/webkit/ValueCallback;

    goto :goto_6f

    :cond_5d
    if-nez p2, :cond_6f

    .line 167
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "取消上传图片"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->uploadFiles:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_6f

    .line 169
    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 170
    iput-object v1, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->uploadFiles:Landroid/webkit/ValueCallback;

    :cond_6f
    :goto_6f
    return-void
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 4

    .line 69
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "触发webview的chromeClient的onPermissionRequest方法"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 59
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p3, "触发webview的chromeClient的onShowFileChooser方法"

    invoke-virtual {p1, p3}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    .line 60
    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->uploadFiles:Landroid/webkit/ValueCallback;

    .line 61
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->openFileChooseProcess()V

    const/4 p1, 0x1

    return p1
.end method
