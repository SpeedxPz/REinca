.class final enum Lcom/igaworks/gson/LongSerializationPolicy$2;
.super Lcom/igaworks/gson/LongSerializationPolicy;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/igaworks/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/igaworks/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/igaworks/gson/JsonElement;
    .locals 2
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 47
    new-instance v0, Lcom/igaworks/gson/JsonPrimitive;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/igaworks/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method