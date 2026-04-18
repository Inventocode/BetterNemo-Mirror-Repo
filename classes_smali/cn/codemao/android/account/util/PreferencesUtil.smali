.class public Lcn/codemao/android/account/util/PreferencesUtil;
.super Ljava/lang/Object;
.source "PreferencesUtil.java"


# static fields
.field private static FILE_NAME:Ljava/lang/String; = "sdk_config_account_api"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 3

    .line 56
    invoke-static {p0}, Lcn/codemao/android/account/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 65
    sget-object v0, Lcn/codemao/android/account/util/PreferencesUtil;->FILE_NAME:Ljava/lang/String;

    const/4 v1, 0x4

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .registers 3

    .line 48
    invoke-static {p0}, Lcn/codemao/android/account/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    .line 31
    invoke-static {p0}, Lcn/codemao/android/account/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 4

    .line 39
    invoke-static {p0}, Lcn/codemao/android/account/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 72
    sget-object v0, Lcn/codemao/android/account/util/PreferencesUtil;->FILE_NAME:Ljava/lang/String;

    const/4 v1, 0x4

    .line 73
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_b

    .line 22
    invoke-static {p0}, Lcn/codemao/android/account/util/PreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Please call init first!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 77
    invoke-static {p0}, Lcn/codemao/android/account/util/PreferencesUtil;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 3

    .line 52
    invoke-static {p0}, Lcn/codemao/android/account/util/PreferencesUtil;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setFileName(Ljava/lang/String;)V
    .registers 1

    .line 61
    sput-object p0, Lcn/codemao/android/account/util/PreferencesUtil;->FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public static setFloat(Landroid/content/Context;Ljava/lang/String;F)V
    .registers 3

    .line 44
    invoke-static {p0}, Lcn/codemao/android/account/util/PreferencesUtil;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    .line 27
    invoke-static {p0}, Lcn/codemao/android/account/util/PreferencesUtil;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setLong(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 4

    .line 35
    invoke-static {p0}, Lcn/codemao/android/account/util/PreferencesUtil;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_e

    .line 16
    invoke-static {p0}, Lcn/codemao/android/account/util/PreferencesUtil;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 15
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Please call init first!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
