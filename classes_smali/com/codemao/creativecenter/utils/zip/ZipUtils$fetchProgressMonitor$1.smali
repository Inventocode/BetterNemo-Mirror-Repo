.class final Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;
.super Ljava/lang/Object;
.source "ZipUtils.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/zip/ZipUtils;->fetchProgressMonitor(Lnet/lingala/zip4j/ZipFile;Ljava/lang/String;JLcom/duode/ziplibrary/OnZipStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $destPath:Ljava/lang/String;

.field final synthetic $listener:Lcom/duode/ziplibrary/OnZipStatusListener;

.field final synthetic $period:J

.field final synthetic $progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/progress/ProgressMonitor;Lcom/duode/ziplibrary/OnZipStatusListener;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$listener:Lcom/duode/ziplibrary/OnZipStatusListener;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$destPath:Ljava/lang/String;

    iput-wide p4, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$period:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    const-string v1, "progressMonitor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getPercentDone()I

    move-result v0

    .line 88
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$listener:Lcom/duode/ziplibrary/OnZipStatusListener;

    invoke-interface {v2, v0}, Lcom/duode/ziplibrary/OnZipStatusListener;->onProgress(I)V

    .line 90
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    move-result-object v0

    sget-object v2, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    if-ne v0, v2, :cond_37

    .line 91
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$listener:Lcom/duode/ziplibrary/OnZipStatusListener;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_2b

    goto :goto_33

    :cond_2b
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v2, "解压失败"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    :goto_33
    invoke-interface {v0, v1}, Lcom/duode/ziplibrary/OnZipStatusListener;->onError(Ljava/lang/Exception;)V

    goto :goto_72

    .line 94
    :cond_37
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    move-result-object v0

    sget-object v2, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    if-ne v0, v2, :cond_5e

    .line 95
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$listener:Lcom/duode/ziplibrary/OnZipStatusListener;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_52

    goto :goto_5a

    :cond_52
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v2, "解压已取消"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    :goto_5a
    invoke-interface {v0, v1}, Lcom/duode/ziplibrary/OnZipStatusListener;->onError(Ljava/lang/Exception;)V

    goto :goto_72

    .line 98
    :cond_5e
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    if-ne v0, v1, :cond_73

    .line 99
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$listener:Lcom/duode/ziplibrary/OnZipStatusListener;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$destPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/duode/ziplibrary/OnZipStatusListener;->onCompleted(Ljava/lang/String;)V

    :goto_72
    return-void

    .line 102
    :cond_73
    iget-wide v0, p0, Lcom/codemao/creativecenter/utils/zip/ZipUtils$fetchProgressMonitor$1;->$period:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method
