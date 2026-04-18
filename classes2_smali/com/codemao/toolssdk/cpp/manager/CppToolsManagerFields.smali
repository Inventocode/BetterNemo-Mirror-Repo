.class public abstract Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;
.super Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;
.source "CppToolsManagerFields.kt"

# interfaces
.implements Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;


# instance fields
.field private cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

.field private cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

.field private contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private cookieData:Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

.field private cppViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private lastLoadUrl:Ljava/lang/String;

.field private onActivityResultCallback:Lcom/codemao/toolssdk/manager/ActivityResultCallback;

.field private toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

.field private userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public clearActivityResultListener()V
    .registers 1

    .line 120
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->destroyActivityResultCallback()V

    return-void
.end method

.method public destroyActivityResultCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->onActivityResultCallback:Lcom/codemao/toolssdk/manager/ActivityResultCallback;

    return-void
.end method

.method protected final destroyCppView()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cppViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_7
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cppViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected final destroyMainHandler()V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 82
    :cond_8
    iput-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->handler:Landroid/os/Handler;

    return-void
.end method

.method public destroyOrientationChangeListener()V
    .registers 2

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    return-void
.end method

.method public destroySessionListener()V
    .registers 2

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    return-void
.end method

.method protected final destroyWRContext()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_7
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->contextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getCookieData()Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;
    .registers 4

    .line 153
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "获取cookieData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cookieData:Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cookieData:Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    return-object v0
.end method

.method public final getLastLoadUrl()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->lastLoadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getOrientationChangeListener()Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    return-object v0
.end method

.method public final getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    return-object v0
.end method

.method public getToolType()Ljava/lang/String;
    .registers 2

    .line 158
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    return-object v0
.end method

.method public getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    return-object v0
.end method

.method public getUserToken()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getWRContext()Landroid/content/Context;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cppViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method protected final initFields()V
    .registers 3

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->onActivityResultCallback:Lcom/codemao/toolssdk/manager/ActivityResultCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/ActivityResultCallback;->onActivityResultCallback(IILandroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public setActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->onActivityResultCallback:Lcom/codemao/toolssdk/manager/ActivityResultCallback;

    return-void
.end method

.method public setCookieData(Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;)V
    .registers 5

    .line 148
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "设置cookieData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cookieData:Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    return-void
.end method

.method public final setLastLoadUrl(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->lastLoadUrl:Ljava/lang/String;

    return-void
.end method

.method public setOrientationListener(Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;)Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    return-object p0
.end method

.method public setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    return-object p0
.end method

.method public setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    return-void
.end method

.method public setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    return-void
.end method

.method protected final setWRContext(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->contextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setWRCppView$toolssdk_release(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->cppViewReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_c

    .line 60
    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->startHeartBeat()V

    :cond_c
    return-void
.end method
