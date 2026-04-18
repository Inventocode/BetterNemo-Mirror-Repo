.class public final Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;
.super Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBuilderBiz;
.source "CMToolsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/manager/CMToolsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

.field private cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

.field private context:Landroid/content/Context;

.field private toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

.field private toolsWebViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/toolssdk/view/ToolsWebView;",
            ">;"
        }
    .end annotation
.end field

.field private userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1187
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBuilderBiz;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/codemao/toolssdk/manager/CMToolsManager;
    .registers 5

    .line 1255
    new-instance v0, Lcom/codemao/toolssdk/manager/CMToolsManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1256
    iget-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setToolsWebViewReference(Ljava/lang/ref/WeakReference;)V

    .line 1257
    iget-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/view/ToolsWebView;

    :cond_15
    if-nez v1, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->setCmToolsManager(Lcom/codemao/toolssdk/manager/CMToolsManager;)V

    .line 1258
    :goto_1b
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setToolsWebViewReference(Ljava/lang/ref/WeakReference;)V

    .line 1259
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setCmToolSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)V

    .line 1260
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setCmToolsOrientationChangeListener(Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;)V

    .line 1261
    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    .line 1262
    iget-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)V

    .line 1263
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->context:Landroid/content/Context;

    if-eqz v1, :cond_50

    .line 1264
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->init(Landroid/content/Context;)Lcom/codemao/toolssdk/manager/CMToolsManager;

    .line 1265
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->context:Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->isPad(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->setCommonProperties(Landroid/content/Context;Z)V

    .line 1267
    :cond_50
    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBuilderBiz;->getEnterFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->setEnterFrom(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;
    .registers 3

    const-string v0, "contextReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1196
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final setEnterFrom(Ljava/lang/String;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;
    .registers 2

    .line 1250
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBuilderBiz;->setEnterFromType(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setOrientationListener(Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;
    .registers 2

    .line 1211
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    return-object p0
.end method

.method public final setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;
    .registers 2

    .line 1206
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    return-object p0
.end method

.method public final setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;
    .registers 2

    .line 1226
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    return-object p0
.end method

.method public final setToolsWebView(Lcom/codemao/toolssdk/view/ToolsWebView;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;
    .registers 3

    .line 1201
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;
    .registers 2

    .line 1221
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    return-object p0
.end method
