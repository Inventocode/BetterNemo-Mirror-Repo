.class public final Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$flushSheetPrivacyLegal$1;
.super Ljava/lang/Object;
.source "DefaultFilePrint.kt"

# interfaces
.implements Lcom/yl/lib/sentry/hook/excel/ExcelBuildDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->flushSheetPrivacyLegal(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildData(ILcom/yl/lib/sentry/hook/printer/PrivacyFunBean;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p1, "privacyFunBean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    .line 135
    invoke-virtual {p2}, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->getAppendTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 136
    invoke-virtual {p2}, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->getFunAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 137
    invoke-virtual {p2}, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->getFunName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 138
    invoke-virtual {p2}, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->buildStackTrace()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, p1, v0

    .line 134
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
