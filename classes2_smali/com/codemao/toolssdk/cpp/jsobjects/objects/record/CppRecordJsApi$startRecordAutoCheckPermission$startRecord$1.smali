.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$startRecord$1;
.super Ljava/lang/Object;
.source "CppRecordJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecordAutoCheckPermission$startRecord(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Ljava/lang/Integer;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$startRecord$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$startRecord$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResultCallback(IILandroid/content/Intent;)V
    .registers 14

    const-string v0, "流程-录音-RecordJsApi"

    const-string v1, "onActivityResultCallback"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_72

    if-eqz p3, :cond_72

    const/4 p1, -0x1

    if-eq p2, p1, :cond_11

    goto :goto_72

    .line 88
    :cond_11
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$startRecord$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->access$setInRecordingProgress$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Z)V

    const-string p1, "music_url"

    .line 91
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "music_path"

    .line 93
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string p2, "music_duration"

    .line 95
    invoke-virtual {p3, p2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string p2, "music_name"

    .line 97
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$startRecord$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    invoke-static {p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)Lcom/google/gson/Gson;

    move-result-object p2

    .line 99
    new-instance p3, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v9, 0x7d0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://codemaotools"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/RecordFileData;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/codemao/toolssdk/model/dsbridge/RecordFileData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    invoke-direct {p3, v9, p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 98
    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$startRecord$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$startRecord$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->access$getToolsWebView$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_71

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerBase;->clearActivityResultListener()V

    :cond_71
    return-void

    .line 85
    :cond_72
    :goto_72
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$startRecord$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$startRecord$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->access$startRecordAutoCheckPermission$cancelBody(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method
