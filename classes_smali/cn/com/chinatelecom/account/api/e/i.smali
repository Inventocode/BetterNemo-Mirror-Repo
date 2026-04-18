.class public final Lcn/com/chinatelecom/account/api/e/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/com/chinatelecom/account/api/e/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcn/com/chinatelecom/account/api/e/l;

    invoke-direct {v0}, Lcn/com/chinatelecom/account/api/e/l;-><init>()V

    sput-object v0, Lcn/com/chinatelecom/account/api/e/i;->a:Lcn/com/chinatelecom/account/api/e/j;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcn/com/chinatelecom/account/api/e/i;->a:Lcn/com/chinatelecom/account/api/e/j;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/com/chinatelecom/account/api/e/j;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .registers 16

    sget-object v0, Lcn/com/chinatelecom/account/api/e/i;->a:Lcn/com/chinatelecom/account/api/e/j;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v8, p6

    invoke-interface/range {v0 .. v8}, Lcn/com/chinatelecom/account/api/e/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcn/com/chinatelecom/account/api/e/i;->a:Lcn/com/chinatelecom/account/api/e/j;

    invoke-interface {v0, p0, p1}, Lcn/com/chinatelecom/account/api/e/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcn/com/chinatelecom/account/api/e/i;->a:Lcn/com/chinatelecom/account/api/e/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/com/chinatelecom/account/api/e/j;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .registers 16

    sget-object v0, Lcn/com/chinatelecom/account/api/e/i;->a:Lcn/com/chinatelecom/account/api/e/j;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v8, p6

    invoke-interface/range {v0 .. v8}, Lcn/com/chinatelecom/account/api/e/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
