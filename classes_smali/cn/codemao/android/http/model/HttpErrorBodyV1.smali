.class public Lcn/codemao/android/http/model/HttpErrorBodyV1;
.super Ljava/lang/Object;
.source "HttpErrorBodyV1.java"


# instance fields
.field private catastrophe:Lcn/codemao/android/http/model/Catastrophe;

.field private error_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCatastrophe()Lcn/codemao/android/http/model/Catastrophe;
    .registers 2

    .line 48
    iget-object v0, p0, Lcn/codemao/android/http/model/HttpErrorBodyV1;->catastrophe:Lcn/codemao/android/http/model/Catastrophe;

    return-object v0
.end method

.method public getError_code()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcn/codemao/android/http/model/HttpErrorBodyV1;->error_code:Ljava/lang/String;

    return-object v0
.end method
