.class public Lcn/codemao/android/sketch/utils/SpUtil;
.super Ljava/lang/Object;
.source "SpUtil.java"


# direct methods
.method public static getBooleanDefaultTrue(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 23
    invoke-static {p0}, Lcn/codemao/android/sketch/utils/SpUtil;->getSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getSp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "sketch_config"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 19
    :cond_3
    invoke-static {p0}, Lcn/codemao/android/sketch/utils/SpUtil;->getSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
