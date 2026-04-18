.class public final Lcom/ljwx/baseapp/extensions/AnyExtensionsKt;
.super Ljava/lang/Object;
.source "AnyExtensions.kt"


# direct methods
.method public static final getStringRes(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/blankj/utilcode/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(id)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
