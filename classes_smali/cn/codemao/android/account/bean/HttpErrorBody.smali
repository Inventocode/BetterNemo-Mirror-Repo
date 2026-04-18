.class public Lcn/codemao/android/account/bean/HttpErrorBody;
.super Ljava/lang/Object;
.source "HttpErrorBody.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private catastrophe:Lcn/codemao/android/account/bean/Catastrophe;

.field private errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_message"
    .end annotation
.end field

.field private error_category:Ljava/lang/String;

.field private error_code:Ljava/lang/String;

.field private error_number:I

.field private log_uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCatastrophe()Lcn/codemao/android/account/bean/Catastrophe;
    .registers 2

    .line 58
    iget-object v0, p0, Lcn/codemao/android/account/bean/HttpErrorBody;->catastrophe:Lcn/codemao/android/account/bean/Catastrophe;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcn/codemao/android/account/bean/HttpErrorBody;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getError_category()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcn/codemao/android/account/bean/HttpErrorBody;->error_category:Ljava/lang/String;

    return-object v0
.end method

.method public getError_code()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcn/codemao/android/account/bean/HttpErrorBody;->error_code:Ljava/lang/String;

    return-object v0
.end method

.method public getError_number()I
    .registers 2

    .line 34
    iget v0, p0, Lcn/codemao/android/account/bean/HttpErrorBody;->error_number:I

    return v0
.end method

.method public getLog_uuid()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcn/codemao/android/account/bean/HttpErrorBody;->log_uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setCatastrophe(Lcn/codemao/android/account/bean/Catastrophe;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcn/codemao/android/account/bean/HttpErrorBody;->catastrophe:Lcn/codemao/android/account/bean/Catastrophe;

    return-void
.end method

.method public setError_category(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcn/codemao/android/account/bean/HttpErrorBody;->error_category:Ljava/lang/String;

    return-void
.end method

.method public setError_code(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcn/codemao/android/account/bean/HttpErrorBody;->error_code:Ljava/lang/String;

    return-void
.end method

.method public setError_number(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcn/codemao/android/account/bean/HttpErrorBody;->error_number:I

    return-void
.end method

.method public setLog_uuid(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcn/codemao/android/account/bean/HttpErrorBody;->log_uuid:Ljava/lang/String;

    return-void
.end method
