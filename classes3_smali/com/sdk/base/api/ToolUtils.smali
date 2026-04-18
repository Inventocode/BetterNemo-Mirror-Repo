.class public Lcom/sdk/base/api/ToolUtils;
.super Ljava/lang/Object;


# direct methods
.method public static clearCache(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/sdk/b/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/sdk/b/a;->b:Ljava/lang/Boolean;

    const-string v2, "cache clear"

    invoke-static {v0, v2, v1}, Lcom/sdk/n/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    const-string v0, "accessCode"

    invoke-static {p0, v0}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
