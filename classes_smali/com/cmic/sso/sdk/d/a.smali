.class public Lcom/cmic/sso/sdk/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/d/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmic/sso/sdk/d/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cmic/sso/sdk/d/a$a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cmic/sso/sdk/d/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cmic/sso/sdk/d/a$a;-><init>(Lcom/cmic/sso/sdk/d/a$1;)V

    sput-object v0, Lcom/cmic/sso/sdk/d/a;->a:Lcom/cmic/sso/sdk/d/a$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/cmic/sso/sdk/d/a;->a:Lcom/cmic/sso/sdk/d/a$a;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    sget-object v0, Lcom/cmic/sso/sdk/d/a;->a:Lcom/cmic/sso/sdk/d/a$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmic/sso/sdk/d/a;->a:Lcom/cmic/sso/sdk/d/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Time"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/cmic/sso/sdk/e/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3d
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/cmic/sso/sdk/d/a;->a:Lcom/cmic/sso/sdk/d/a$a;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
