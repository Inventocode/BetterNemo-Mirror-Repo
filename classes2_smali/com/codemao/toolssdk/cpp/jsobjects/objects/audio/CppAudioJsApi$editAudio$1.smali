.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$editAudio$1;
.super Ljava/lang/Object;
.source "CppAudioJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->editAudio(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$editAudio$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$editAudio$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResultCallback(IILandroid/content/Intent;)V
    .registers 12

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_48

    const/4 p1, -0x1

    if-ne p2, p1, :cond_48

    const/4 p1, 0x0

    if-eqz p3, :cond_12

    const-string p2, "music_url"

    .line 174
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v1, p2

    goto :goto_13

    :cond_12
    move-object v1, p1

    :goto_13
    if-eqz p3, :cond_1b

    const-string p1, "music_name"

    .line 176
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1b
    move-object v2, p1

    const-wide/16 p1, 0x0

    if-eqz p3, :cond_26

    const-string v0, "music_duration"

    .line 178
    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    :cond_26
    move-wide v3, p1

    .line 181
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/codemao/toolssdk/model/dsbridge/EditAudioFileData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 p3, 0x7d0

    invoke-direct {p2, p3, p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 183
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$editAudio$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$editAudio$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;

    invoke-static {p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;)Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    goto :goto_4f

    .line 185
    :cond_48
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$editAudio$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;

    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi$editAudio$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;->access$editAudio$cancel(Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :goto_4f
    return-void
.end method
