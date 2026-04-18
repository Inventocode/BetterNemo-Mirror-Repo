.class final Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CTCdnUploadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->uploadText(Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.evolving.android.upload.CTCdnUploadManager"
    f = "CTCdnUploadManager.kt"
    l = {
        0x93,
        0x94,
        0x9b,
        0x9e
    }
    m = "uploadText"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->label:I

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->uploadText(Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
