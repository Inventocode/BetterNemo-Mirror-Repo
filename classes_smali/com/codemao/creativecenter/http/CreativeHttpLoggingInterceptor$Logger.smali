.class public interface abstract Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;
.super Ljava/lang/Object;
.source "CreativeHttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 221
    new-instance v0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger$1;

    invoke-direct {v0}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger$1;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;->DEFAULT:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Logger;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
