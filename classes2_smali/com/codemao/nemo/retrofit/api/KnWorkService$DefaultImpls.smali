.class public final Lcom/codemao/nemo/retrofit/api/KnWorkService$DefaultImpls;
.super Ljava/lang/Object;
.source "KnWorkService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/retrofit/api/KnWorkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic getWorkKnListRecycleBin$default(Lcom/codemao/nemo/retrofit/api/KnWorkService;Ljava/lang/String;IIIILjava/lang/Object;)Lio/reactivex/Observable;
    .registers 7

    if-nez p6, :cond_d

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_8

    const/16 p4, -0x63

    .line 64
    :cond_8
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->getWorkKnListRecycleBin(Ljava/lang/String;III)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getWorkKnListRecycleBin"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
