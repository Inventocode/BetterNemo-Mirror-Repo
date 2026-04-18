.class public final Lcom/codemao/toolssdk/cpp/manager/business/interfaces/IToolSDKWorkHistory$DefaultImpls;
.super Ljava/lang/Object;
.source "IToolSDKWorkHistory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/cpp/manager/business/interfaces/IToolSDKWorkHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic openHistoryBackupDialog$default(Lcom/codemao/toolssdk/cpp/manager/business/interfaces/IToolSDKWorkHistory;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 7
    :cond_7
    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/IToolSDKWorkHistory;->openHistoryBackupDialog(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: openHistoryBackupDialog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
