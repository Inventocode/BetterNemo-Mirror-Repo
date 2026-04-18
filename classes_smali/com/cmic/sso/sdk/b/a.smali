.class public Lcom/cmic/sso/sdk/b/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/b/a$a;
    }
.end annotation


# direct methods
.method static a()I
    .registers 1

    invoke-static {}, Lcom/cmic/sso/sdk/b/a;->b()Lcom/cmic/sso/sdk/b/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/cmic/sso/sdk/b/a$a;)I
    .registers 3

    sget-object v0, Lcom/cmic/sso/sdk/b/a$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v1, 0x2

    if-eq p0, v1, :cond_10

    const/4 p0, -0x1

    return p0

    :cond_10
    return v0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private static b()Lcom/cmic/sso/sdk/b/a$a;
    .registers 2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v0, Lcom/cmic/sso/sdk/b/a$a;->b:Lcom/cmic/sso/sdk/b/a$a;

    return-object v0

    :cond_d
    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/cmic/sso/sdk/b/a$a;->c:Lcom/cmic/sso/sdk/b/a$a;

    return-object v0

    :cond_18
    sget-object v0, Lcom/cmic/sso/sdk/b/a$a;->a:Lcom/cmic/sso/sdk/b/a$a;

    return-object v0
.end method
