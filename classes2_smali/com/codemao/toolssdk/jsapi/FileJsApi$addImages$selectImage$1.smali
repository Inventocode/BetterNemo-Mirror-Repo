.class public final Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;
.super Ljava/lang/Object;
.source "FileJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/FileJsApi;->addImages$selectImage(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileJsApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileJsApi.kt\ncom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,710:1\n1851#2,2:711\n*S KotlinDebug\n*F\n+ 1 FileJsApi.kt\ncom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1\n*L\n201#1:711,2\n*E\n"
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

.field final synthetic $option:Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResultCallback(IILandroid/content/Intent;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v2, 0x3e9

    move/from16 v3, p1

    if-ne v3, v2, :cond_178

    if-eqz v1, :cond_178

    const/4 v2, -0x1

    move/from16 v3, p2

    if-eq v3, v2, :cond_13

    goto/16 :goto_178

    .line 179
    :cond_13
    iget-object v2, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$setInAddImagesProgress$p(Lcom/codemao/toolssdk/jsapi/FileJsApi;Z)V

    const-string v2, "type"

    .line 180
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    iget-object v4, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isScene()Z

    move-result v4

    const-string v5, "https://codemaotools"

    const-string v6, "result"

    const/16 v7, 0x7d0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_9b

    const-string v4, "scene"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 184
    :try_start_37
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v2, v1, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;

    if-eqz v2, :cond_42

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;

    goto :goto_43

    :cond_42
    move-object v1, v9

    :goto_43
    if-eqz v1, :cond_4a

    .line 185
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    :cond_4a
    move-object v2, v9

    :goto_4b
    if-eqz v2, :cond_53

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_54

    :cond_53
    const/4 v3, 0x1

    :cond_54
    if-nez v3, :cond_6f

    if-nez v1, :cond_59

    goto :goto_6f

    .line 187
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->setUrl(Ljava/lang/String;)V

    .line 189
    :cond_6f
    :goto_6f
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v2, v7, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 190
    iget-object v1, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v3, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-static {v3}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/FileJsApi;)Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_83} :catch_84

    goto :goto_9a

    .line 193
    :catch_84
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x1bd5

    invoke-direct {v1, v2, v9}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 194
    iget-object v2, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v3, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-static {v3}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/FileJsApi;)Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_9a
    return-void

    .line 197
    :cond_9b
    iget-object v4, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isActor()Z

    move-result v4

    if-eqz v4, :cond_f3

    const-string v4, "actor"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 199
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_d9

    .line 1851
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ba
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    .line 204
    :cond_d9
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/IActorBody;

    invoke-direct {v3, v9, v2, v8, v9}, Lcom/codemao/toolssdk/model/dsbridge/IActorBody;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v7, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 205
    iget-object v2, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v3, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-static {v3}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/FileJsApi;)Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void

    .line 209
    :cond_f3
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_102

    .line 210
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_100

    goto :goto_102

    :cond_100
    const/4 v2, 0x0

    goto :goto_103

    :cond_102
    :goto_102
    const/4 v2, 0x1

    :goto_103
    if-eqz v2, :cond_10d

    .line 211
    iget-object v1, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iget-object v2, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {v1, v2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$addImages$cancelBody$0(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_168

    .line 213
    :cond_10d
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 215
    iget-object v1, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isActor()Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 216
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IActorBody;

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v9, v3, v8, v9}, Lcom/codemao/toolssdk/model/dsbridge/IActorBody;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v7, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    move-object v9, v1

    goto :goto_159

    .line 217
    :cond_13a
    iget-object v1, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isScene()Z

    move-result v1

    if-eqz v1, :cond_159

    .line 218
    new-instance v9, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 220
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;

    const/4 v11, 0x0

    new-instance v13, Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    const/4 v2, 0x0

    invoke-direct {v13, v2, v2}, Lcom/codemao/toolssdk/model/dsbridge/PointBody;-><init>(FF)V

    const/high16 v14, 0x3f800000  # 1.0f

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/PointBody;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 218
    invoke-direct {v9, v7, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 225
    :cond_159
    :goto_159
    iget-object v1, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v2, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-static {v2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/FileJsApi;)Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 228
    :goto_168
    iget-object v1, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v1

    if-eqz v1, :cond_177

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->clearActivityResultListener()V

    :cond_177
    return-void

    .line 176
    :cond_178
    :goto_178
    iget-object v1, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iget-object v2, v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {v1, v2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$addImages$cancelBody$0(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method
