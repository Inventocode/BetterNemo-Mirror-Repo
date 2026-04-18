.class Lcom/tencent/open/b/h$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/h;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Z

.field final synthetic c:Lcom/tencent/open/b/h;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/h;Landroid/os/Bundle;Z)V
    .registers 4

    .line 170
    iput-object p1, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iput-object p2, p0, Lcom/tencent/open/b/h$2;->a:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/tencent/open/b/h$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 175
    :try_start_0
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/b/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/m;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/b/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/utils/m;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {}, Lcom/tencent/open/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/utils/m;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/b/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/m;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "uin"

    const-string v6, "1000"

    .line 181
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "imei"

    .line 182
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imsi"

    .line 183
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android_id"

    .line 184
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mac"

    .line 185
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "platform"

    const-string v1, "1"

    .line 187
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os_ver"

    .line 188
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "position"

    const-string v1, ""

    .line 189
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "network"

    .line 190
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "language"

    .line 191
    invoke-static {}, Lcom/tencent/open/b/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resolution"

    .line 192
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apn"

    .line 193
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model_name"

    .line 194
    invoke-static {}, Lcom/tencent/open/utils/f;->a()Lcom/tencent/open/utils/f;

    move-result-object v1

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/open/utils/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timezone"

    .line 195
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdk_ver"

    const-string v1, "3.5.10.lite"

    .line 196
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "qz_ver"

    .line 197
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.qzone"

    invoke-static {v1, v2}, Lcom/tencent/open/utils/m;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "qq_ver"

    .line 198
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.tencent.mobileqq"

    invoke-static {v1, v2}, Lcom/tencent/open/utils/m;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "qua"

    .line 199
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/open/utils/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/utils/m;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "packagename"

    .line 200
    invoke-static {}, Lcom/tencent/open/utils/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_ver"

    .line 201
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/open/utils/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/utils/m;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/tencent/open/b/h$2;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_106

    .line 205
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 208
    :cond_106
    new-instance v0, Lcom/tencent/open/b/c;

    invoke-direct {v0, v4}, Lcom/tencent/open/b/c;-><init>(Landroid/os/Bundle;)V

    .line 211
    iget-object v1, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iget-object v1, v1, Lcom/tencent/open/b/h;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iget-object v0, v0, Lcom/tencent/open/b/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 217
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/open/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/i;

    move-result-object v1

    const-string v2, "Agent_ReportTimeInterval"

    .line 218
    invoke-virtual {v1, v2}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12d

    const/16 v1, 0x2710

    :cond_12d
    const/16 v2, 0x3e9

    .line 224
    iget-object v3, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    const-string v4, "report_via"

    invoke-virtual {v3, v4, v0}, Lcom/tencent/open/b/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_157

    iget-boolean v0, p0, Lcom/tencent/open/b/h$2;->b:Z

    if-eqz v0, :cond_13e

    goto :goto_157

    .line 228
    :cond_13e
    iget-object v0, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iget-object v0, v0, Lcom/tencent/open/b/h;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16c

    .line 229
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 230
    iput v2, v0, Landroid/os/Message;->what:I

    .line 231
    iget-object v2, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iget-object v2, v2, Lcom/tencent/open/b/h;->f:Landroid/os/Handler;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_16c

    .line 225
    :cond_157
    :goto_157
    iget-object v0, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    invoke-virtual {v0}, Lcom/tencent/open/b/h;->d()V

    .line 226
    iget-object v0, p0, Lcom/tencent/open/b/h$2;->c:Lcom/tencent/open/b/h;

    iget-object v0, v0, Lcom/tencent/open/b/h;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_163} :catch_164

    goto :goto_16c

    :catch_164
    move-exception v0

    const-string v1, "openSDK_LOG.ReportManager"

    const-string v2, "--> reporVia, exception in sub thread."

    .line 235
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16c
    :goto_16c
    return-void
.end method
