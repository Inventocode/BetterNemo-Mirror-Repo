.class public final Lcom/efs/sdk/base/a/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/a/e/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/efs/sdk/base/http/HttpResponse;)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/d;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 92
    :cond_c
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/d;->data:Ljava/lang/String;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_44

    aget-object v4, v0, v3

    const-string v5, "="

    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 97
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_41

    .line 101
    aget-object v5, v4, v2

    const-string v6, "retcode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_36

    .line 102
    aget-object v4, v4, v6

    invoke-virtual {p0, v4}, Lcom/efs/sdk/base/http/HttpResponse;->setBizCode(Ljava/lang/String;)V

    goto :goto_41

    .line 104
    :cond_36
    iget-object v5, p0, Lcom/efs/sdk/base/a/f/d;->extra:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    aget-object v7, v4, v2

    aget-object v4, v4, v6

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_44
    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;Z)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 10

    const/4 p2, 0x0

    .line 2053
    :try_start_1
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v0

    .line 2211
    iget-object v0, v0, Lcom/efs/sdk/base/a/i/f;->a:Lcom/efs/sdk/base/a/i/c;

    .line 1112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppChk#2014"

    .line 1114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/efs/sdk/base/a/i/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/efs/sdk/base/a/i/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/efs/sdk/base/a/h/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1118
    iget-object v4, v0, Lcom/efs/sdk/base/a/i/c;->a:Ljava/lang/String;

    const-string v5, "http"

    .line 1119
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_fd

    const-string v6, "?chk="

    if-eqz v5, :cond_46

    .line 1120
    :try_start_3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 1122
    :cond_46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    :goto_4c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&vno="

    .line 1126
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&uuid="

    .line 1128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/efs/sdk/base/a/i/c;->c:Ljava/lang/String;

    .line 1129
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&app="

    .line 1130
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/efs/sdk/base/a/i/c;->b:Ljava/lang/String;

    .line 1131
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&zip=gzip"

    .line 1132
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 3148
    iget-object v3, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v3, v3, Lcom/efs/sdk/base/a/f/a;->c:I

    if-nez v3, :cond_8b

    .line 3174
    iget-object v2, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 43
    array-length v1, v2

    goto :goto_99

    :cond_8b
    const/4 v4, 0x1

    if-ne v4, v3, :cond_99

    .line 4191
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 50
    array-length v1, v2

    .line 5137
    :cond_99
    :goto_99
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    .line 5138
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Content-Length"

    .line 5139
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v1, Lcom/efs/sdk/base/a/h/b/d;

    invoke-direct {v1, v0}, Lcom/efs/sdk/base/a/h/b/d;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v3}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/util/Map;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v0

    .line 6063
    iget-object v1, v0, Lcom/efs/sdk/base/a/h/b/d;->a:Lcom/efs/sdk/base/a/h/b/b;

    iput-object v2, v1, Lcom/efs/sdk/base/a/h/b/b;->c:[B

    .line 58
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/h/b/d;->a()Lcom/efs/sdk/base/a/h/b/c;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/h/b/c;->b()Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p2

    .line 61
    invoke-static {p2}, Lcom/efs/sdk/base/a/i/e;->a(Lcom/efs/sdk/base/http/HttpResponse;)V

    .line 64
    iget-boolean v0, p2, Lcom/efs/sdk/base/a/f/d;->succ:Z
    :try_end_c8
    .catchall {:try_start_3f .. :try_end_c8} :catchall_fd

    const-string v1, "efs.base"

    if-eqz v0, :cond_e7

    .line 65
    :try_start_cc
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "wa upload succ, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/efs/sdk/base/http/HttpResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7024
    invoke-static {v1, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7191
    iget-object p1, p1, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    .line 66
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    goto :goto_10c

    .line 70
    :cond_e7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "wa upload fail, resp is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/efs/sdk/base/http/HttpResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8024
    invoke-static {v1, p1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fc
    .catchall {:try_start_cc .. :try_end_fc} :catchall_fd

    return-object p2

    :catchall_fd
    move-exception p1

    if-nez p2, :cond_105

    .line 76
    new-instance p2, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {p2}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    :cond_105
    const-string v0, "efs.wa.send"

    const-string v1, "get file size error"

    .line 78
    invoke-static {v0, v1, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10c
    return-object p2
.end method
