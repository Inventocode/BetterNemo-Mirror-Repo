.class public Lcn/codemao/android/sketch/model/ReportParams;
.super Ljava/lang/Object;
.source "ReportParams.java"


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/ReportParams;->params:Ljava/util/Map;

    return-void
.end method

.method public static create()Lcn/codemao/android/sketch/model/ReportParams;
    .registers 1

    .line 16
    new-instance v0, Lcn/codemao/android/sketch/model/ReportParams;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/ReportParams;-><init>()V

    return-object v0
.end method


# virtual methods
.method public map()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcn/codemao/android/sketch/model/ReportParams;->params:Ljava/util/Map;

    return-object v0
.end method

.method public setMode(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;
    .registers 4

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 205
    iget-object v0, p0, Lcn/codemao/android/sketch/model/ReportParams;->params:Ljava/util/Map;

    const-string v1, "mode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setRevoleType(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;
    .registers 4

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 190
    iget-object v0, p0, Lcn/codemao/android/sketch/model/ReportParams;->params:Ljava/util/Map;

    const-string v1, "revolve_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setSize(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;
    .registers 4

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 198
    iget-object v0, p0, Lcn/codemao/android/sketch/model/ReportParams;->params:Ljava/util/Map;

    const-string v1, "size"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setSpecialType(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;
    .registers 4

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 212
    iget-object v0, p0, Lcn/codemao/android/sketch/model/ReportParams;->params:Ljava/util/Map;

    const-string v1, "specially_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method
