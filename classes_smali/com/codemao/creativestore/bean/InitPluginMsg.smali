.class public Lcom/codemao/creativestore/bean/InitPluginMsg;
.super Ljava/lang/Object;
.source "InitPluginMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private plugin:Ljava/lang/String;

.field private plugin_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitPluginMsg;->plugin_name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/codemao/creativestore/bean/InitPluginMsg;->plugin:Ljava/lang/String;

    return-void
.end method
