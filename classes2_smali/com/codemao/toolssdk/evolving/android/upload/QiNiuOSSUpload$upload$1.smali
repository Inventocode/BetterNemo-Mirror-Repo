.class final Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "QiNiuOSSUpload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->upload(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.evolving.android.upload.QiNiuOSSUpload"
    f = "QiNiuOSSUpload.kt"
    l = {
        0x35,
        0x5f
    }
    m = "upload"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->label:I

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->access$upload(Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
