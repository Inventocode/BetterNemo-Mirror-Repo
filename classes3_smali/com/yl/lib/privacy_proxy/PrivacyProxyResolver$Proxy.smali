.class public final Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;
.super Ljava/lang/Object;
.source "PrivacyProxyResolver.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;

    invoke-direct {v0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final delete(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Bundle;)Ljava/lang/Integer;
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "删除服务: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;

    invoke-direct {v2, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->uriToLog(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "delete"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 213
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    const/4 p0, -0x1

    .line 214
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3e
    if-eqz p0, :cond_49

    .line 216
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4a

    :cond_49
    const/4 p0, 0x0

    :goto_4a
    return-object p0
.end method

.method public static final delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "删除服务: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;

    invoke-direct {v2, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->uriToLog(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "delete"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 194
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    const/4 p0, -0x1

    .line 195
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3e
    if-eqz p0, :cond_49

    .line 197
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4a

    :cond_49
    const/4 p0, 0x0

    :goto_4a
    return-object p0
.end method

.method public static final insert(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "增加服务: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;

    invoke-direct {v2, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->uriToLog(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "insert"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3a

    return-object v1

    :cond_3a
    if-eqz p0, :cond_40

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    :cond_40
    return-object v1
.end method

.method public static final insert(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "增加服务: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;

    invoke-direct {v2, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->uriToLog(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "insert"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3a

    return-object v1

    :cond_3a
    if-eqz p0, :cond_40

    .line 138
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v1

    :cond_40
    return-object v1
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "查询服务: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;

    invoke-direct {v2, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->uriToLog(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "query"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3a

    return-object v1

    :cond_3a
    if-eqz p0, :cond_40

    .line 98
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :cond_40
    return-object v1
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "查询服务: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;

    invoke-direct {v2, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->uriToLog(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "query"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3a

    return-object v1

    :cond_3a
    if-eqz p0, :cond_40

    .line 49
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_40
    return-object v1
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "查询服务: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;

    invoke-direct {v2, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->uriToLog(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "query"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3a

    return-object v1

    :cond_3a
    if-eqz p0, :cond_40

    .line 70
    invoke-virtual/range {p0 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :cond_40
    return-object v1
.end method

.method public static final update(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Ljava/lang/Integer;
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "更新服务: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;

    invoke-direct {v2, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->uriToLog(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "update"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 175
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    const/4 p0, -0x1

    .line 176
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3e
    if-eqz p0, :cond_49

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4a

    :cond_49
    const/4 p0, 0x0

    :goto_4a
    return-object p0
.end method

.method public static final update(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "更新服务: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;

    invoke-direct {v2, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyResolver$Proxy;->uriToLog(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "update"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 155
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    const/4 p0, -0x1

    .line 156
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3e
    if-eqz p0, :cond_49

    .line 158
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4a

    :cond_49
    const/4 p0, 0x0

    :goto_4a
    return-object p0
.end method

.method private final uriToLog(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    .line 229
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contact"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p1, "联系人"

    return-object p1

    .line 233
    :cond_1c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "calendar"

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string p1, "日历"

    return-object p1

    .line 237
    :cond_2e
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "calls"

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string p1, "通话"

    return-object p1

    .line 241
    :cond_40
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sms"

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string p1, "短信"

    return-object p1

    .line 245
    :cond_52
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
