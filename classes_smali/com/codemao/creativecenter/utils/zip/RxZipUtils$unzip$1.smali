.class final Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;
.super Ljava/lang/Object;
.source "RxZipUtils.kt"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/zip/RxZipUtils;->unzip(Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $unzipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;->$unzipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/codemao/creativecenter/utils/zip/UnzipInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/codemao/creativecenter/utils/zip/ZipUtils;->INSTANCE:Lcom/codemao/creativecenter/utils/zip/ZipUtils;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;->$unzipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->getZipFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;->$unzipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->getDestPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unzipInfo.destPath"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;->$unzipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->getPsd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v3, ""

    goto :goto_32

    :cond_2c
    iget-object v3, p0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;->$unzipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->getPsd()Ljava/lang/String;

    move-result-object v3

    :goto_32
    const-string v4, "if (TextUtils.isEmpty(un…d)) \"\" else unzipInfo.psd"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v4, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1$1;

    invoke-direct {v4, p0, p1}, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1$1;-><init>(Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;Lio/reactivex/ObservableEmitter;)V

    .line 17
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/codemao/creativecenter/utils/zip/ZipUtils;->unzip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/duode/ziplibrary/OnZipStatusListener;)Ljava/lang/String;

    return-void
.end method
