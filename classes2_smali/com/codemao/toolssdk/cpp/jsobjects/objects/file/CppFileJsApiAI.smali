.class public abstract Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;
.source "CppFileJsApiAI.kt"


# instance fields
.field private isRequesting:Z

.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method public static synthetic $r8$lambda$RZWboa9g8vNGxQPT27h-quMxUiM(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->downloadImageBase64$execute$lambda$3$lambda$2$lambda$1(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WZ1MsBqxtpqAdWWNyzdSxMeijVA(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->downloadImageBase64$execute$lambda$3$lambda$2$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wv8Z2urIQAaiXhx_aWN3hboix2g(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Ljava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->downloadImageBase64$execute$lambda$3(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Ljava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 3

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    return-void
.end method

.method public static final synthetic access$downloadImageBase64$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 3

    .line 32
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->downloadImageBase64$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V

    return-void
.end method

.method private static final downloadImageBase64$down(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/DownloadImageBase64Data;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/DownloadImageBase64Data;

    .line 44
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web通知原生下载图片:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/DownloadImageBase64Data;->getBase64()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_34

    :cond_33
    move-object v2, v3

    :goto_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p0, :cond_48

    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object p0

    move-object v6, p0

    goto :goto_49

    :cond_48
    move-object v6, v3

    .line 46
    :goto_49
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/DownloadImageBase64Data;->getBase64()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_62

    if-eqz v6, :cond_62

    const-string p0, "开始保存图片"

    .line 47
    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 48
    sget-object v4, Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;->INSTANCE:Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/DownloadImageBase64Data;->getBase64()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;->saveImage$default(Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 50
    :cond_62
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x2

    invoke-direct {p1, v1, v3, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const-string p0, "通知web保存成功"

    .line 51
    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    return-void
.end method

.method private static final downloadImageBase64$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_9

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    goto :goto_b

    :cond_9
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 59
    :goto_b
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1d

    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Ljava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    return-void
.end method

.method private static final downloadImageBase64$execute$lambda$3(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Ljava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 61
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_44

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->isRequesting:Z

    .line 63
    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v2}, Lcom/codemao/toolssdk/permissionx/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions([Ljava/lang/String;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->onForwardToSettings(Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p1

    .line 68
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->request(Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;)V

    :cond_44
    return-void
.end method

.method private static final downloadImageBase64$execute$lambda$3$lambda$2$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 65
    iput-boolean p4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->isRequesting:Z

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->showDeniedSettingsDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;)V

    .line 67
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p1, "onForwardToSettings"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    return-void
.end method

.method private static final downloadImageBase64$execute$lambda$3$lambda$2$lambda$1(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "<anonymous parameter 2>"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 69
    iput-boolean p4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->isRequesting:Z

    if-eqz p3, :cond_22

    .line 71
    invoke-static {p0, p2, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->downloadImageBase64$down(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_37

    .line 73
    :cond_22
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 p3, 0x1bd0

    const/4 p4, 0x2

    const/4 p5, 0x0

    invoke-direct {p2, p3, p5, p4, p5}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_37
    return-void
.end method

.method private final hasStoragePermission(Landroid/content/Context;)Z
    .registers 6

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-lt v0, v3, :cond_11

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    .line 101
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_11
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 106
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 111
    :goto_1b
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android版本:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",是否有存储权限:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    return v1
.end method

.method private final showDeniedSettingsDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;)V
    .registers 13

    .line 121
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 123
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_storage_request:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_tosetting:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string p2, "context.getString(R.stri…sdk_permission_tosetting)"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_cancel:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v6, ""

    move-object v3, p3

    .line 122
    invoke-virtual/range {v3 .. v8}, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;->showForwardToSettingsDialog(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final downloadImageBase64(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->isRequesting:Z

    if-eqz v0, :cond_f

    return-void

    .line 80
    :cond_f
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_22

    goto :goto_4e

    :cond_22
    const/16 v1, 0x17

    if-lt v0, v1, :cond_4a

    .line 85
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "没有权限,申请权限"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getPERMISSION_TYPE_IMAGES()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$downloadImageBase64$1;

    invoke-direct {v4, p2, p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI$downloadImageBase64$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_58

    .line 94
    :cond_4a
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->downloadImageBase64$down(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_58

    .line 81
    :cond_4e
    :goto_4e
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "有权限或者高android版本直接下载"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 82
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;->downloadImageBase64$down(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :goto_58
    return-void
.end method
